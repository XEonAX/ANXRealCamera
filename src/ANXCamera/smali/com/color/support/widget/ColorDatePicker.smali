.class public Lcom/color/support/widget/ColorDatePicker;
.super Landroid/widget/FrameLayout;
.source "ColorDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorDatePicker$a;,
        Lcom/color/support/widget/ColorDatePicker$b;,
        Lcom/color/support/widget/ColorDatePicker$SavedState;,
        Lcom/color/support/widget/ColorDatePicker$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ColorDatePicker"

.field private static b:[C


# instance fields
.field private final c:Landroid/widget/LinearLayout;

.field private final d:Lcom/color/support/widget/ColorNumberPicker;

.field private final e:Lcom/color/support/widget/ColorNumberPicker;

.field private final f:Lcom/color/support/widget/ColorNumberPicker;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/Locale;

.field private i:Lcom/color/support/widget/ColorDatePicker$c;

.field private j:[Ljava/lang/String;

.field private k:I

.field private l:Lcom/color/support/widget/ColorDatePicker$b;

.field private m:Ljava/util/Calendar;

.field private n:Ljava/util/Calendar;

.field private o:Lcom/color/support/widget/ColorDatePicker$b;

.field private p:Z

.field private q:Lcom/color/support/widget/ColorDatePicker$a;

.field private r:Lcom/color/support/widget/ColorDatePicker$a;

.field private s:Lcom/color/support/widget/ColorDatePicker$a;

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/color/support/widget/ColorDatePicker;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x4ds
        0x79s
    .end array-data
.end method

.method private a(Lcom/color/support/widget/ColorDatePicker$b;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$b;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/color/support/widget/ColorDatePicker$b;

    invoke-direct {p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;-><init>(Ljava/util/Locale;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/color/support/widget/ColorDatePicker$b;

    invoke-direct {v0, p2}, Lcom/color/support/widget/ColorDatePicker$b;-><init>(Ljava/util/Locale;)V

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$b;->c(Lcom/color/support/widget/ColorDatePicker$b;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker$b;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(Lcom/color/support/widget/ColorDatePicker$b;)V

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorDatePicker$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-static {v0}, Lcom/color/support/widget/ColorDatePicker$b;->c(Lcom/color/support/widget/ColorDatePicker$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-static {v1}, Lcom/color/support/widget/ColorDatePicker$b;->b(Lcom/color/support/widget/ColorDatePicker$b;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-static {v1}, Lcom/color/support/widget/ColorDatePicker$b;->b(Lcom/color/support/widget/ColorDatePicker$b;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/ColorDatePicker$b;->a(III)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->c()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorDatePicker;Lcom/color/support/widget/ColorDatePicker$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setDate(Lcom/color/support/widget/ColorDatePicker$b;)V

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorDatePicker$b;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lcom/color/support/widget/ColorDatePicker;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget v2, p0, Lcom/color/support/widget/ColorDatePicker;->t:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget v2, p0, Lcom/color/support/widget/ColorDatePicker;->t:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setPickerNormalColor(I)V

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorDatePicker;->u:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker;->u:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker;->u:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setPickerFocusColor(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/color/support/widget/ColorDatePicker$b;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic d(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->r:Lcom/color/support/widget/ColorDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$c;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorDatePicker$b;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorDatePicker$b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    :goto_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_a

    move v3, v1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_c

    move v3, v1

    :cond_c
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v2, v5}, Lcom/color/support/widget/ColorDatePicker$b;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v2, v5}, Lcom/color/support/widget/ColorDatePicker$b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    :goto_4
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->j:[Ljava/lang/String;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorNumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->q:Lcom/color/support/widget/ColorDatePicker$a;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$c;)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v1, v5}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->s:Lcom/color/support/widget/ColorDatePicker$a;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->setFormatter(Lcom/color/support/widget/ColorNumberPicker$c;)V

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    if-le v1, v0, :cond_e

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    :cond_e
    return-void
.end method

.method static synthetic e(Lcom/color/support/widget/ColorDatePicker;)Lcom/color/support/widget/ColorNumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    return-object p0
.end method

.method private e()V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorDatePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->i:Lcom/color/support/widget/ColorDatePicker$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/color/support/widget/ColorDatePicker$c;->a(Lcom/color/support/widget/ColorDatePicker;III)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->d()V

    return-void
.end method

.method static synthetic g(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->e()V

    return-void
.end method

.method static synthetic h(Lcom/color/support/widget/ColorDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->f()V

    return-void
.end method

.method static synthetic i(Lcom/color/support/widget/ColorDatePicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker;->j:[Ljava/lang/String;

    return-object p0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->h:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->h:Ljava/util/Locale;

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->a(Lcom/color/support/widget/ColorDatePicker$b;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$b;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker;->a(Lcom/color/support/widget/ColorDatePicker$b;Ljava/util/Locale;)Lcom/color/support/widget/ColorDatePicker$b;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorDatePicker$b;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->k:I

    iget p1, p0, Lcom/color/support/widget/ColorDatePicker;->k:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->j:[Ljava/lang/String;

    return-void
.end method

.method private setDate(Lcom/color/support/widget/ColorDatePicker$b;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(Lcom/color/support/widget/ColorDatePicker$b;)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->c()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    return v0
.end method

.method public getOnDateChangedListener()Lcom/color/support/widget/ColorDatePicker$c;
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->i:Lcom/color/support/widget/ColorDatePicker$c;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker;->p:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/color/support/widget/ColorDatePicker$SavedState;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1200(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1300(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lcom/color/support/widget/ColorDatePicker$SavedState;->access$1400(Lcom/color/support/widget/ColorDatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/widget/ColorDatePicker;->a(III)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->d()V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->e()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/color/support/widget/ColorDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/color/support/widget/ColorDatePicker$1;)V

    return-object v6
.end method

.method public setBackground(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->e:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->f:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker;->p:Z

    return-void
.end method

.method public setFocusColor(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->u:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->b()V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(J)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->b(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(J)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->e()V

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->d()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(J)V

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->l:Lcom/color/support/widget/ColorDatePicker$b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->o:Lcom/color/support/widget/ColorDatePicker$b;

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker;->m:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/color/support/widget/ColorDatePicker$b;->a(J)V

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->e()V

    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->d()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/ColorDatePicker;->t:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorDatePicker;->b()V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/color/support/widget/ColorDatePicker$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker;->i:Lcom/color/support/widget/ColorDatePicker$c;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
