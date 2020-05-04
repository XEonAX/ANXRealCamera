.class public Lcom/color/support/widget/f$a;
.super Ljava/lang/Object;
.source "ColorSecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/support/widget/f;

    invoke-direct {v0}, Lcom/color/support/widget/f;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/f$a;->f:Z

    new-instance v0, Lcom/color/support/widget/f$a$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/f$a$1;-><init>(Lcom/color/support/widget/f$a;)V

    iput-object v0, p0, Lcom/color/support/widget/f$a;->m:Landroid/content/DialogInterface$OnKeyListener;

    invoke-direct {p0, p1}, Lcom/color/support/widget/f$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/f$a;)Lcom/color/support/widget/f;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    iget-object p1, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_security_alert_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {p1}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdailog_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {p1}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdialog_statement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/color/support/widget/f;->b(Lcom/color/support/widget/f;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {p1}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_security_alertdailog_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p1, v0}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    const/4 p1, -0x1

    iput p1, p0, Lcom/color/support/widget/f$a;->j:I

    iput p1, p0, Lcom/color/support/widget/f$a;->k:I

    iget-object p1, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "get"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ro.oppo.regionmark"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "EUEX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/f$a;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/f$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/f$a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/f$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/f$a;->g:Z

    return p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/f$a$7;

    invoke-direct {v1, p0}, Lcom/color/support/widget/f$a$7;-><init>(Lcom/color/support/widget/f$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;)Lcolor/support/v7/app/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/f$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0, p1}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Lcom/color/support/widget/f$b;)Lcom/color/support/widget/f$b;

    return-object p0
.end method

.method public a(Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0, p1}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Lcom/color/support/widget/f$c;)Lcom/color/support/widget/f$c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/color/support/widget/f$a;
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/f$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/color/support/widget/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/f$a;->f:Z

    return-object p0
.end method

.method public b(I)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/f$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/color/support/widget/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/f$a;->g:Z

    return-object p0
.end method

.method public b()Lcom/color/support/widget/f;
    .locals 8

    iget-boolean v0, p0, Lcom/color/support/widget/f$a;->i:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/color/support/widget/f$a;->k:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    sget v3, Lcolor/support/v7/appcompat/R$string;->color_security_alertdailog_privacy:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v3, p0, Lcom/color/support/widget/f$a;->j:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    sget v5, Lcolor/support/v7/appcompat/R$string;->color_security_alertdailog_statement:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/color/support/widget/a;

    iget-object v6, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/color/support/widget/a;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/color/support/widget/f$a$2;

    invoke-direct {v6, p0}, Lcom/color/support/widget/f$a$2;-><init>(Lcom/color/support/widget/f$a;)V

    invoke-virtual {v3, v6}, Lcom/color/support/widget/a;->a(Lcom/color/support/widget/a$a;)V

    add-int v6, v4, v0

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->TD05:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v3, v3

    invoke-static {v3, v6, v5}, Lcom/color/support/d/b;->a(FFI)F

    move-result v3

    float-to-int v3, v3

    iget-object v7, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v7}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v7

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->e(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Lcom/color/support/widget/f$a$3;

    invoke-direct {v7, p0, v4, v0}, Lcom/color/support/widget/f$a$3;-><init>(Lcom/color/support/widget/f$a;II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/color/support/widget/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->TD07:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v6, v5}, Lcom/color/support/d/b;->a(FFI)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->g(Lcom/color/support/widget/f;)Landroid/widget/TextView;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/color/support/widget/f$a;->c()V

    iget-boolean v0, p0, Lcom/color/support/widget/f$a;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/color/support/widget/f$a;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->TD05:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v6, v5}, Lcom/color/support/d/b;->a(FFI)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v1}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/CheckBox;->setTextSize(IF)V

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/f$a$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/f$a$4;-><init>(Lcom/color/support/widget/f$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v0}, Lcom/color/support/widget/f;->d(Lcom/color/support/widget/f;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    new-instance v1, Lcolor/support/v7/app/b$a;

    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    iget v4, p0, Lcom/color/support/widget/f$a;->l:I

    invoke-direct {v1, v3, v4}, Lcolor/support/v7/app/b$a;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/color/support/widget/f$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    invoke-static {v3}, Lcom/color/support/widget/f;->c(Lcom/color/support/widget/f;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/b$a;->d(Landroid/view/View;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/f$a;->e:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    sget v4, Lcolor/support/v7/appcompat/R$string;->color_allow_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Lcom/color/support/widget/f$a$6;

    invoke-direct {v4, p0}, Lcom/color/support/widget/f$a$6;-><init>(Lcom/color/support/widget/f$a;)V

    invoke-virtual {v1, v3, v4}, Lcolor/support/v7/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    iget-object v3, p0, Lcom/color/support/widget/f$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    sget v4, Lcolor/support/v7/appcompat/R$string;->color_reject_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    new-instance v4, Lcom/color/support/widget/f$a$5;

    invoke-direct {v4, p0}, Lcom/color/support/widget/f$a$5;-><init>(Lcom/color/support/widget/f$a;)V

    invoke-virtual {v1, v3, v4}, Lcolor/support/v7/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->a(Z)Lcolor/support/v7/app/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/f$a;->m:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/b$a;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcolor/support/v7/app/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/app/b$a;->c()Lcolor/support/v7/app/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/f;->a(Lcom/color/support/widget/f;Lcolor/support/v7/app/b;)Lcolor/support/v7/app/b;

    iget-object v0, p0, Lcom/color/support/widget/f$a;->a:Lcom/color/support/widget/f;

    return-object v0
.end method

.method public c(I)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/f$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/color/support/widget/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/color/support/widget/f$a;->i:Z

    return-object p0
.end method

.method public d(I)Lcom/color/support/widget/f$a;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/f$a;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/f$a;->e:Ljava/lang/String;

    return-object p0
.end method
