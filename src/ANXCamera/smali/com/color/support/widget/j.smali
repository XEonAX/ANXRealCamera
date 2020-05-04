.class public Lcom/color/support/widget/j;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/j$a;,
        Lcom/color/support/widget/j$b;
    }
.end annotation


# static fields
.field private static s:F = 1.8f


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:[Lcom/color/support/widget/j$a;

.field private g:[I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:[[I

.field private r:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/color/support/widget/j$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/color/support/widget/j;->f:[Lcom/color/support/widget/j$a;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/color/support/widget/j;->g:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/j;->t:Ljava/util/ArrayList;

    iput v3, p0, Lcom/color/support/widget/j;->u:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/color/support/widget/j;->l:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/color/support/widget/j;->m:I

    iput v3, p0, Lcom/color/support/widget/j;->a:I

    iget v0, p0, Lcom/color/support/widget/j;->l:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/color/support/widget/j;->b:I

    iput v3, p0, Lcom/color/support/widget/j;->d:I

    iget v0, p0, Lcom/color/support/widget/j;->b:I

    iput v0, p0, Lcom/color/support/widget/j;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/j;->k:Ljava/util/List;

    iput p3, p0, Lcom/color/support/widget/j;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/j;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {p0, p1}, Lcom/color/support/widget/j;->b(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/j;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/support/widget/j;->i:I

    new-instance p2, Lcom/color/support/widget/j$b;

    invoke-direct {p2, p0}, Lcom/color/support/widget/j$b;-><init>(Lcom/color/support/widget/j;)V

    iget v0, p0, Lcom/color/support/widget/j;->c:I

    iput v0, p2, Lcom/color/support/widget/j$b;->b:I

    iget v0, p0, Lcom/color/support/widget/j;->b:I

    iput v0, p2, Lcom/color/support/widget/j$b;->a:I

    iget v0, p0, Lcom/color/support/widget/j;->a:I

    iput v0, p2, Lcom/color/support/widget/j$b;->c:I

    iget v0, p0, Lcom/color/support/widget/j;->d:I

    iput v0, p2, Lcom/color/support/widget/j$b;->d:I

    const/16 v0, 0xc

    iput v0, p2, Lcom/color/support/widget/j$b;->f:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const p4, 0x7fffffff

    :cond_0
    move v0, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v2, p4, :cond_1

    iget v5, p0, Lcom/color/support/widget/j;->b:I

    add-int/2addr v5, v3

    add-int/2addr v5, p5

    iget v6, p0, Lcom/color/support/widget/j;->l:I

    if-le v5, v6, :cond_2

    :cond_1
    iget v2, p0, Lcom/color/support/widget/j;->d:I

    iget v3, p0, Lcom/color/support/widget/j;->c:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v2, p1

    move v3, v2

    :cond_2
    new-instance v5, Lcom/color/support/widget/j$a;

    invoke-direct {v5, p2}, Lcom/color/support/widget/j$a;-><init>(Lcom/color/support/widget/j$b;)V

    iput v3, v5, Lcom/color/support/widget/j$a;->i:I

    iput v1, v5, Lcom/color/support/widget/j$a;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/color/support/widget/j$a;->b:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v4, v7, p1

    iput-object v7, v5, Lcom/color/support/widget/j$a;->a:[I

    add-int/2addr v2, v6

    iget v4, v5, Lcom/color/support/widget/j$a;->e:I

    iget v6, v5, Lcom/color/support/widget/j$a;->g:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p2, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/color/support/widget/j;->i:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lcom/color/support/widget/j;->i:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/color/support/widget/j;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/color/support/widget/j;->h:I

    iget-object p1, p0, Lcom/color/support/widget/j;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    invoke-static {}, Lcom/color/support/widget/j;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method static a(Landroid/content/res/TypedArray;III)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    return p3
.end method

.method static synthetic a(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->l:I

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v10, v1

    move v0, v6

    move v7, v0

    move v8, v7

    :goto_0
    move v9, v8

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v11, 0x1

    if-eq v2, v11, :cond_c

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/j;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/color/support/widget/j$b;

    move-result-object v10

    iget-object v2, p0, Lcom/color/support/widget/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v10, Lcom/color/support/widget/j$b;->g:I

    if-eqz v2, :cond_1

    iget v2, v10, Lcom/color/support/widget/j$b;->g:I

    iget v3, p0, Lcom/color/support/widget/j;->n:I

    if-eq v2, v3, :cond_1

    move v2, v11

    goto :goto_2

    :cond_1
    move v2, v6

    :goto_2
    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/color/support/widget/j;->a(Landroid/content/res/XmlResourceParser;)V

    move v8, v6

    goto :goto_0

    :cond_2
    move v9, v6

    move v8, v11

    goto :goto_1

    :cond_3
    const-string v3, "Key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move v3, v9

    move v4, v7

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/color/support/widget/j;->a(Landroid/content/res/Resources;Lcom/color/support/widget/j$b;IILandroid/content/res/XmlResourceParser;)Lcom/color/support/widget/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/color/support/widget/j$a;->a:[I

    aget v1, v1, v6

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    move v1, v6

    :goto_3
    iget-object v2, p0, Lcom/color/support/widget/j;->f:[Lcom/color/support/widget/j$a;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/color/support/widget/j;->f:[Lcom/color/support/widget/j$a;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/color/support/widget/j;->f:[Lcom/color/support/widget/j$a;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/color/support/widget/j;->g:[I

    iget-object v3, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    aput v3, v2, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/color/support/widget/j;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/color/support/widget/j$a;->a:[I

    aget v1, v1, v6

    const/4 v2, -0x6

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/color/support/widget/j;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    iget-object v1, v10, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v0, v11

    goto/16 :goto_1

    :cond_8
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/j;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/color/support/widget/j$a;->g:I

    iget v2, v1, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v0, v2

    add-int/2addr v9, v0

    iget v0, p0, Lcom/color/support/widget/j;->i:I

    if-le v9, v0, :cond_a

    iput v9, p0, Lcom/color/support/widget/j;->i:I

    :cond_a
    move v0, v6

    goto/16 :goto_1

    :cond_b
    if-eqz v8, :cond_0

    iget v2, v10, Lcom/color/support/widget/j$b;->d:I

    add-int/2addr v7, v2

    iget v2, v10, Lcom/color/support/widget/j$b;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v7, v2

    move v8, v6

    goto/16 :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecurityKeyboard"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    iget p1, p0, Lcom/color/support/widget/j;->d:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/color/support/widget/j;->h:I

    return-void
.end method

.method private a(Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->b:I

    return p0
.end method

.method private b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyWidth:I

    iget v0, p0, Lcom/color/support/widget/j;->l:I

    div-int/lit8 v1, v0, 0xa

    invoke-static {p1, p2, v0, v1}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j;->b:I

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorKeyHeight:I

    iget v0, p0, Lcom/color/support/widget/j;->m:I

    const/16 v1, 0x32

    invoke-static {p1, p2, v0, v1}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j;->c:I

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorHorizontalGap:I

    iget v0, p0, Lcom/color/support/widget/j;->l:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j;->a:I

    sget p2, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboard_colorVerticalGap:I

    iget v0, p0, Lcom/color/support/widget/j;->m:I

    invoke-static {p1, p2, v0, v1}, Lcom/color/support/widget/j;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/j;->d:I

    iget p2, p0, Lcom/color/support/widget/j;->b:I

    int-to-float p2, p2

    sget v0, Lcom/color/support/widget/j;->s:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/color/support/widget/j;->r:I

    iget p2, p0, Lcom/color/support/widget/j;->r:I

    mul-int/2addr p2, p2

    iput p2, p0, Lcom/color/support/widget/j;->r:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->m:I

    return p0
.end method

.method static synthetic d(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->c:I

    return p0
.end method

.method static synthetic e(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->a:I

    return p0
.end method

.method static synthetic f(Lcom/color/support/widget/j;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/j;->d:I

    return p0
.end method

.method private f()V
    .locals 11

    invoke-virtual {p0}, Lcom/color/support/widget/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/color/support/widget/j;->o:I

    invoke-virtual {p0}, Lcom/color/support/widget/j;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/color/support/widget/j;->p:I

    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/color/support/widget/j;->q:[[I

    iget-object v0, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iget v1, p0, Lcom/color/support/widget/j;->o:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/color/support/widget/j;->p:I

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_3

    move v6, v3

    move v7, v6

    :goto_2
    iget-object v8, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/j$a;

    invoke-virtual {v8, v4, v5}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v9

    iget v10, p0, Lcom/color/support/widget/j;->r:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/color/support/widget/j;->o:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9, v5}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v9

    iget v10, p0, Lcom/color/support/widget/j;->r:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/color/support/widget/j;->o:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/color/support/widget/j;->p:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v9

    iget v10, p0, Lcom/color/support/widget/j;->r:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/color/support/widget/j;->p:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v4, v9}, Lcom/color/support/widget/j$a;->b(II)I

    move-result v8

    iget v9, p0, Lcom/color/support/widget/j;->r:I

    if-ge v8, v9, :cond_1

    :cond_0
    add-int/lit8 v8, v7, 0x1

    aput v6, v0, v7

    move v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-array v6, v7, [I

    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/color/support/widget/j;->q:[[I

    iget v8, p0, Lcom/color/support/widget/j;->p:I

    div-int v9, v5, v8

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Lcom/color/support/widget/j;->o:I

    div-int v10, v4, v10

    add-int/2addr v9, v10

    aput-object v6, v7, v9

    add-int/2addr v5, v8

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/color/support/widget/j;->o:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static g()I
    .locals 7

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInitialDisplayDensity"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Lcom/color/support/widget/j$b;IILandroid/content/res/XmlResourceParser;)Lcom/color/support/widget/j$a;
    .locals 7

    new-instance v6, Lcom/color/support/widget/j$a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/j$a;-><init>(Landroid/content/res/Resources;Lcom/color/support/widget/j$b;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/color/support/widget/j$b;
    .locals 1

    new-instance v0, Lcom/color/support/widget/j$b;

    invoke-direct {v0, p1, p0, p2}, Lcom/color/support/widget/j$b;-><init>(Landroid/content/res/Resources;Lcom/color/support/widget/j;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/color/support/widget/j$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/color/support/widget/j;->j:Ljava/util/List;

    return-object v0
.end method

.method public a(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/j;->f:[Lcom/color/support/widget/j$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean p1, v4, Lcom/color/support/widget/j$a;->l:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/j;->e:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/color/support/widget/j;->e:Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public a(II)[I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/j;->q:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/j;->f()V

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/j;->c()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/j;->b()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/color/support/widget/j;->p:I

    div-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    iget v0, p0, Lcom/color/support/widget/j;->o:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    const/16 p1, 0x32

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/j;->q:[[I

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/j;->h:I

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 10

    invoke-static {p1}, Lcom/color/support/widget/j;->a(Landroid/content/Context;)F

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/color/support/widget/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/j$b;

    iget-object v5, v4, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v1

    move v6, v3

    move v3, v7

    :goto_1
    if-ge v3, v5, :cond_1

    iget-object v8, v4, Lcom/color/support/widget/j$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/support/widget/j$a;

    iget v9, v8, Lcom/color/support/widget/j$a;->g:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    iput v9, v8, Lcom/color/support/widget/j$a;->g:I

    iget v9, v8, Lcom/color/support/widget/j$a;->g:I

    add-int/2addr v7, v9

    iput v7, v8, Lcom/color/support/widget/j$a;->i:I

    iget v9, v8, Lcom/color/support/widget/j$a;->e:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-int v9, v9

    iput v9, v8, Lcom/color/support/widget/j$a;->e:I

    iget v8, v8, Lcom/color/support/widget/j$a;->e:I

    add-int/2addr v7, v8

    if-le v7, v6, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/color/support/widget/j;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecurityResize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "mTotalWidth="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/color/support/widget/j;->i:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityKeyboard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/j;->i:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/j;->e:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/color/support/widget/j;->u:I

    return v0
.end method
