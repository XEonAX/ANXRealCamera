.class public Landroidx/vectordrawable/a/a/i;
.super Landroidx/vectordrawable/a/a/h;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/a/a/i$b;,
        Landroidx/vectordrawable/a/a/i$a;,
        Landroidx/vectordrawable/a/a/i$e;,
        Landroidx/vectordrawable/a/a/i$c;,
        Landroidx/vectordrawable/a/a/i$d;,
        Landroidx/vectordrawable/a/a/i$f;,
        Landroidx/vectordrawable/a/a/i$g;,
        Landroidx/vectordrawable/a/a/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private b:Landroidx/vectordrawable/a/a/i$g;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/vectordrawable/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/vectordrawable/a/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    new-instance v0, Landroidx/vectordrawable/a/a/i$g;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i$g;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/a/a/i$g;)V
    .locals 2

    invoke-direct {p0}, Landroidx/vectordrawable/a/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/vectordrawable/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    new-instance v0, Landroidx/vectordrawable/a/a/i;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i;-><init>()V

    invoke-static {p0, p1, p2}, Landroidx/core/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    new-instance p0, Landroidx/vectordrawable/a/a/i$h;

    iget-object p1, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/vectordrawable/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroidx/vectordrawable/a/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    invoke-static {p0, p1, v2, p2}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroidx/vectordrawable/a/a/i;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/vectordrawable/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/vectordrawable/a/a/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "tint"

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 p3, 0x5

    iget-boolean v2, v0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    const/4 p3, 0x7

    iget v0, v1, Landroidx/vectordrawable/a/a/i$f;->f:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/a/a/i$f;->f:F

    const/16 p3, 0x8

    iget v0, v1, Landroidx/vectordrawable/a/a/i$f;->g:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/a/a/i$f;->g:F

    iget p3, v1, Landroidx/vectordrawable/a/a/i$f;->f:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-lez p3, :cond_5

    iget p3, v1, Landroidx/vectordrawable/a/a/i$f;->g:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_4

    const/4 p3, 0x3

    iget v2, v1, Landroidx/vectordrawable/a/a/i$f;->d:F

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/a/a/i$f;->d:F

    const/4 p3, 0x2

    iget v2, v1, Landroidx/vectordrawable/a/a/i$f;->e:F

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/a/a/i$f;->e:F

    iget p3, v1, Landroidx/vectordrawable/a/a/i$f;->d:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_3

    iget p3, v1, Landroidx/vectordrawable/a/a/i$f;->e:F

    cmpg-float p3, p3, v0

    if-lez p3, :cond_2

    const/4 p3, 0x4

    invoke-virtual {v1}, Landroidx/vectordrawable/a/a/i$f;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/vectordrawable/a/a/i$f;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, v1, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    iget-object p2, v1, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {p2, p1, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v1, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    move v6, v5

    :goto_0
    if-eq v3, v5, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_0

    if-eq v3, v8, :cond_8

    :cond_0
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/vectordrawable/a/a/i$c;

    const-string v8, "path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v3, Landroidx/vectordrawable/a/a/i$b;

    invoke-direct {v3}, Landroidx/vectordrawable/a/a/i$b;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/a/a/i$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v7, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    iget v7, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v3, v3, Landroidx/vectordrawable/a/a/i$b;->o:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    goto :goto_1

    :cond_2
    const-string v8, "clip-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v3, Landroidx/vectordrawable/a/a/i$a;

    invoke-direct {v3}, Landroidx/vectordrawable/a/a/i$a;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/a/a/i$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v7, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v3, v3, Landroidx/vectordrawable/a/a/i$a;->o:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroidx/vectordrawable/a/a/i$c;

    invoke-direct {v3}, Landroidx/vectordrawable/a/a/i$c;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/a/a/i$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v7, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v3, v3, Landroidx/vectordrawable/a/a/i$c;->e:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    goto :goto_1

    :cond_6
    if-ne v3, v8, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_7
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    return-void

    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/vectordrawable/a/a/i;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    cmpl-float v4, v5, v6

    if-eqz v4, :cond_4

    :cond_3
    move v1, v7

    move v3, v1

    :cond_4
    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v8, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Landroidx/vectordrawable/a/a/i;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v5, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/a/a/i$g;->b(II)V

    iget-boolean v2, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/a/a/i$g;->a(II)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v2}, Landroidx/vectordrawable/a/a/i$g;->b()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/a/a/i$g;->a(II)V

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v1}, Landroidx/vectordrawable/a/a/i$g;->c()V

    :cond_8
    :goto_0
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroidx/vectordrawable/a/a/i$g;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v1}, Landroidx/vectordrawable/a/a/i$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/vectordrawable/a/a/i$h;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/vectordrawable/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget v0, v0, Landroidx/vectordrawable/a/a/i$f;->e:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget v0, v0, Landroidx/vectordrawable/a/a/i$f;->d:F

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .locals 1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    new-instance v1, Landroidx/vectordrawable/a/a/i$f;

    invoke-direct {v1}, Landroidx/vectordrawable/a/a/i$f;-><init>()V

    iput-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    sget-object v1, Landroidx/vectordrawable/a/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, p2, p4}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/vectordrawable/a/a/i$g;->k:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/a/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/vectordrawable/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-boolean v0, v0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$g;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/a/a/i$g;-><init>(Landroidx/vectordrawable/a/a/i$g;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->f:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v4, v1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v2, v4}, Landroidx/vectordrawable/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    move v0, v3

    :cond_1
    invoke-virtual {v1}, Landroidx/vectordrawable/a/a/i$g;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/vectordrawable/a/a/i$g;->a([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    move v0, v3

    :cond_2
    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/vectordrawable/a/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/a/a/i$f;->setRootAlpha(I)V

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iput-boolean p1, v0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/a/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/vectordrawable/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/vectordrawable/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method