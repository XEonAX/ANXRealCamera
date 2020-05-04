.class public Lcolor/support/v7/app/ColorAlertController;
.super Lcolor/support/v7/app/a;
.source "ColorAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;,
        Lcolor/support/v7/app/ColorAlertController$a;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/text/TextPaint;

.field private C:Landroid/view/ViewStub;

.field private D:Landroid/database/ContentObserver;

.field private E:Landroid/content/ComponentCallbacks;

.field private y:Z

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/app/a;-><init>(Landroid/content/Context;Landroidx/appcompat/app/f;Landroid/view/Window;)V

    new-instance p2, Lcolor/support/v7/app/ColorAlertController$1;

    iget-object p3, p0, Lcolor/support/v7/app/ColorAlertController;->A:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcolor/support/v7/app/ColorAlertController$1;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->D:Landroid/database/ContentObserver;

    new-instance p2, Lcolor/support/v7/app/ColorAlertController$2;

    invoke-direct {p2, p0}, Lcolor/support/v7/app/ColorAlertController$2;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p2, p0, Lcolor/support/v7/app/ColorAlertController;->E:Landroid/content/ComponentCallbacks;

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    new-instance p1, Lcolor/support/v7/app/ColorAlertController$a;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/ColorAlertController$a;-><init>(Lcolor/support/v7/app/ColorAlertController;)V

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->A:Landroid/os/Handler;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->f()V

    return-void
.end method

.method private A()Z
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private B()Z
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private C()Z
    .locals 6

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_button_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->J()I

    move-result v2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->B:Landroid/text/TextPaint;

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->g:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->F()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->B:Landroid/text/TextPaint;

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->j:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->G()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->B:Landroid/text/TextPaint;

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->m:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-ge v0, v2, :cond_4

    if-ge v3, v2, :cond_4

    if-lt v4, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private D()I
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private E()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private F()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private G()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private H()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private I()Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private J()I
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v1, :cond_1

    move v1, v2

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private K()V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->C:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_vertical_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->C:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->list_divider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_divider2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->C:Landroid/view/ViewStub;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->alert_dialog_horizontal_button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->C:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->M()V

    return-void
.end method

.method private M()V
    .locals 5

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v2, Lcolor/support/v7/appcompat/R$id;->iv_button_divider_2:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v1, Lcolor/support/v7/appcompat/R$id;->alert_dialog_bottom_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->m()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->t()V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->b(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->n()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcolor/support/v7/app/ColorAlertController;Landroid/content/ComponentCallbacks;)Landroid/content/ComponentCallbacks;
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController;->E:Landroid/content/ComponentCallbacks;

    return-object p1
.end method

.method static synthetic a(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "privateFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPrivateFlag failed.Fail msg is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorAlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->A:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-eq v0, v1, :cond_1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x8ff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->g()V

    return-void
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 4

    iget-boolean v0, p0, Lcolor/support/v7/app/ColorAlertController;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->o:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->o:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->N()V

    return-void
.end method

.method private e(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/app/ColorAlertController$4;

    invoke-direct {v1, p0, p1}, Lcolor/support/v7/app/ColorAlertController$4;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic e(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->u()V

    return-void
.end method

.method static synthetic f(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/ComponentCallbacks;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->E:Landroid/content/ComponentCallbacks;

    return-object p0
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->B:Landroid/text/TextPaint;

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->oppo_dialog_button_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method static synthetic g(Lcolor/support/v7/app/ColorAlertController;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController;->D:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private g()V
    .locals 6

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->h()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const v4, -0x7ffffa00

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    const/16 v5, 0x51

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method private h()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcolor/support/v7/appcompat/R$style;->Animation_ColorSupport_Dialog_Alpha:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    sget v1, Lcolor/support/v7/appcompat/R$style;->ColorDialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private j()Z
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 3

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->l()V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->E:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->N()V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->t()V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->b(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->m()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "manual_hide_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->D:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private m()I
    .locals 3

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->n()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lcolor/support/v7/app/ColorAlertController;->y:Z

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private n()I
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "manual_hide_navigationbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcolor/support/v7/app/ColorAlertController;->y:Z

    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    if-nez v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method

.method private p()Z
    .locals 7

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v2

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get navigation bar status message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorAlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v0
.end method

.method private q()Z
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()Z
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWindowManagerService"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDockedStackSide"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFullScreen operation failed.Return false.Failed msg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorAlertController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private t()V
    .locals 3

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->q()Z

    move-result v0

    const v1, -0x7ffffa00

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    if-eqz v1, :cond_1

    check-cast v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setNeedClip(Z)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private v()Z
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w()V
    .locals 9

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->z:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcolor/support/v7/appcompat/R$color;->color_bottom_alert_dialog_button_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->i:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->c:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    add-int v8, v3, v4

    invoke-virtual {v7, v0, v1, v2, v8}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v7, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    iget-object v8, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMinHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinHeight(I)V

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->G()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->E()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->C()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    iget-object v5, p0, Lcolor/support/v7/app/ColorAlertController;->i:Landroid/widget/Button;

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->i:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMinHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->I()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->H()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->e:Landroid/widget/ListView;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->y()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->i:Landroid/widget/Button;

    :goto_0
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->l:Landroid/widget/Button;

    :goto_1
    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->f:Landroid/widget/Button;

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_alert_bottom_dialog_corner_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private y()Z
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z()Z
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->D()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcolor/support/v7/app/a;->a()V

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->g()V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->i()V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->k()V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->u()V

    return-void
.end method

.method protected b()I
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcolor/support/v7/app/a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$layout;->color_bottom_alert_dialog:I

    :goto_0
    return v0
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-super {p0, p1}, Lcolor/support/v7/app/a;->b(Landroid/view/ViewGroup;)V

    sget v0, Lcolor/support/v7/appcompat/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController;->e:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_alert_dialog_list_divider:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcolor/support/v7/app/ColorAlertController;->e(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcolor/support/v7/app/ColorAlertController;->d(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    new-instance v0, Lcolor/support/v7/app/ColorAlertController$3;

    invoke-direct {v0, p0, p1}, Lcolor/support/v7/app/ColorAlertController$3;-><init>(Lcolor/support/v7/app/ColorAlertController;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1}, Lcolor/support/v7/app/a;->c(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->w()V

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->x()V

    return-void
.end method

.method protected d()V
    .locals 2

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController;->c()Landroid/widget/ListView;

    move-result-object v0

    instance-of v1, v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    if-eqz v1, :cond_0

    check-cast v0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->setNeedClip(Z)V

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/appcompat/R$id;->button_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController;->C:Landroid/view/ViewStub;

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->K()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->L()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/app/ColorAlertController;->K()V

    :goto_0
    invoke-super {p0}, Lcolor/support/v7/app/a;->d()V

    return-void
.end method
