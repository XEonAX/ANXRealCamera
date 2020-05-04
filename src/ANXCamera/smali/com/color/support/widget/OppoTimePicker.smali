.class public Lcom/color/support/widget/OppoTimePicker;
.super Landroid/widget/FrameLayout;
.source "OppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/OppoTimePicker$SavedState;,
        Lcom/color/support/widget/OppoTimePicker$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/color/support/widget/OppoTimePicker$a;


# instance fields
.field private final c:Lcom/color/support/widget/ColorNumberPicker;

.field private final d:Lcom/color/support/widget/ColorNumberPicker;

.field private final e:Lcom/color/support/widget/ColorNumberPicker;

.field private final f:Landroid/widget/Button;

.field private final g:[Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Z

.field private m:Lcom/color/support/widget/OppoTimePicker$a;

.field private n:Ljava/util/Calendar;

.field private o:Ljava/util/Locale;

.field private p:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/color/support/widget/OppoTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/color/support/widget/OppoTimePicker;->a:Z

    new-instance v0, Lcom/color/support/widget/OppoTimePicker$1;

    invoke-direct {v0}, Lcom/color/support/widget/OppoTimePicker$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/OppoTimePicker;->b:Lcom/color/support/widget/OppoTimePicker$a;

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->i:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setVisibility(I)V

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->e()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->f:Landroid/widget/Button;

    iget-object v3, p0, Lcom/color/support/widget/OppoTimePicker;->g:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "en"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_2
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->b()Z

    move-result v2

    if-nez v2, :cond_3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->m:Lcom/color/support/widget/OppoTimePicker$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/color/support/widget/OppoTimePicker$a;->a(Lcom/color/support/widget/OppoTimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->o:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->o:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->n:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->h:Z

    return v0
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/color/support/widget/OppoTimePicker;->i:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->l:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/color/support/widget/OppoTimePicker$SavedState;

    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/color/support/widget/OppoTimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/OppoTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/color/support/widget/OppoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/color/support/widget/OppoTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->i:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->i:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->d()V

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->f()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->f()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/color/support/widget/OppoTimePicker;->l:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/OppoTimePicker;->h:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/OppoTimePicker;->h:Z

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->c()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/color/support/widget/OppoTimePicker;->d()V

    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->requestLayout()V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->m:Lcom/color/support/widget/OppoTimePicker$a;

    return-void
.end method

.method public setRowNumber(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->c:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    iget-object v0, p0, Lcom/color/support/widget/OppoTimePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerRowNumber(I)V

    :cond_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->j:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->j:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/support/widget/OppoTimePicker;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
