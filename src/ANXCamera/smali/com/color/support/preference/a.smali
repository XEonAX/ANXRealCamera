.class public Lcom/color/support/preference/a;
.super Landroidx/preference/c;
.source "ColorActivityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/a$a;
    }
.end annotation


# instance fields
.field private af:Landroidx/appcompat/app/f;

.field private ag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/a;I)I
    .locals 0

    iput p1, p0, Lcom/color/support/preference/a;->ag:I

    return p1
.end method

.method static synthetic a(Lcom/color/support/preference/a;)Landroidx/appcompat/app/f;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/a;->af:Landroidx/appcompat/app/f;

    return-object p0
.end method

.method private ao()Lcom/color/support/preference/ColorActivityDialogPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/preference/a;->an()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorActivityDialogPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/color/support/preference/a;)I
    .locals 0

    iget p0, p0, Lcom/color/support/preference/a;->ag:I

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/color/support/preference/a;
    .locals 3

    new-instance v0, Lcom/color/support/preference/a;

    invoke-direct {v0}, Lcom/color/support/preference/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/a;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Lcom/color/support/preference/a;->c(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/color/support/preference/a;->r()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_list_statusbar_bg:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object p1

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/preference/ColorActivityDialogPreference;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/a;->ag:I

    new-instance p1, Lcom/color/support/preference/a$1;

    invoke-virtual {p0}, Lcom/color/support/preference/a;->o()Landroidx/fragment/app/c;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$style;->Theme_ColorSupport_ActivityDialog:I

    invoke-direct {p1, p0, v0, v1}, Lcom/color/support/preference/a$1;-><init>(Lcom/color/support/preference/a;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/color/support/preference/a;->af:Landroidx/appcompat/app/f;

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/color/support/preference/a;->r()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$color;->color_dialog_fragment_navigation_bar_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    invoke-static {}, Lcom/color/support/d/f;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/color/support/preference/a;->r()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$bool;->list_status_white_enabled:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x6

    if-ge v4, v6, :cond_1

    if-nez v4, :cond_5

    :cond_1
    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit16 v0, v3, -0x2001

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_4

    if-nez v5, :cond_3

    or-int/lit16 v0, v3, 0x2000

    goto :goto_0

    :cond_3
    or-int/lit16 v0, v3, 0x100

    goto :goto_0

    :cond_4
    or-int/lit8 v0, v3, 0x10

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/color/support/preference/a;->o()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$layout;->color_preference_listview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$id;->toolbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar;

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/support/preference/ColorActivityDialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_back_arrow:I

    invoke-static {v3, v4}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/color/support/preference/a$2;

    invoke-direct {v3, p0}, Lcom/color/support/preference/a$2;-><init>(Lcom/color/support/preference/a;)V

    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcolor/support/v7/appcompat/R$id;->abl:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorAppBarLayout;

    sget v3, Lcolor/support/v7/appcompat/R$id;->color_preference_listview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    sget v4, Lcolor/support/v7/appcompat/R$id;->divider_line:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/color/support/preference/a;->r()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/4 v11, 0x1

    invoke-static {v3, v11}, Landroidx/core/g/u;->a(Landroid/view/View;Z)V

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/color/support/preference/a;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v1, v5}, Lcolor/support/design/widget/ColorAppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/color/support/preference/a$3;

    invoke-direct {v1, p0, v2, v3}, Lcom/color/support/preference/a$3;-><init>(Lcom/color/support/preference/a;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/widget/ListView;)V

    invoke-virtual {v2, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/color/support/preference/a$4;

    invoke-virtual {p0}, Lcom/color/support/preference/a;->o()Landroidx/fragment/app/c;

    move-result-object v6

    sget v7, Lcolor/support/v7/appcompat/R$layout;->color_preference_listview_item:I

    sget v8, Lcolor/support/v7/appcompat/R$id;->checkedtextview:I

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/support/preference/ColorActivityDialogPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v9

    move-object v4, v1

    move-object v5, p0

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/color/support/preference/a$4;-><init>(Lcom/color/support/preference/a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/color/support/preference/a$5;

    invoke-direct {v1, p0, v3, p1}, Lcom/color/support/preference/a$5;-><init>(Lcom/color/support/preference/a;Landroid/widget/ListView;Landroidx/appcompat/app/f;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v3, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f;->setContentView(Landroid/view/View;)V

    return-object p1
.end method

.method public i(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/color/support/preference/a;->ag:I

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/preference/a;->ao()Lcom/color/support/preference/ColorActivityDialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/preference/ColorActivityDialogPreference;->m()[Ljava/lang/CharSequence;

    move-result-object p1

    iget v1, p0, Lcom/color/support/preference/a;->ag:I

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
