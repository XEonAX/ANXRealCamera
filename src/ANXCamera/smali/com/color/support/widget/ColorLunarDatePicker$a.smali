.class Lcom/color/support/widget/ColorLunarDatePicker$a;
.super Ljava/lang/Object;
.source "ColorLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(Ljava/util/Calendar;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorLunarDatePicker$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    return p0
.end method


# virtual methods
.method a(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    return p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    return p1

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method a()J
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method a(III)V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iput p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    :goto_0
    return-void
.end method

.method a(J)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    return-void
.end method

.method public a(Lcom/color/support/widget/ColorLunarDatePicker$a;)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iget v0, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    iget v0, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    iget v0, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->e:I

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->e:I

    iget v0, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->f:I

    iput v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->f:I

    iget-boolean p1, p1, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    return-void
.end method

.method a(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    return-void
.end method

.method a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(III)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(I)I

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/color/support/widget/e;->a(III)[I

    move-result-object v1

    if-ne p1, v4, :cond_3

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez p1, :cond_2

    const/16 p1, 0x1b

    if-le p2, p1, :cond_0

    if-ne p3, v0, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    sub-int/2addr v0, p2

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    :cond_0
    if-ne p2, v0, :cond_1

    if-le p3, p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    sub-int/2addr p3, v0

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    :cond_2
    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    goto/16 :goto_3

    :cond_3
    const/4 p2, 0x0

    if-ne p1, v2, :cond_8

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez p1, :cond_7

    add-int/2addr p3, v0

    aget p1, v1, p2

    invoke-static {p1}, Lcom/color/support/widget/e;->c(I)I

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_4
    if-gt p3, p1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, p1, 0x1

    if-ne p3, v3, :cond_6

    move p3, p1

    goto :goto_1

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :goto_1
    aget p1, v1, p2

    aget v2, v1, v2

    invoke-static {p1, p3, v2, v0}, Lcom/color/support/widget/e;->b(IIIZ)I

    move-result p1

    aget p2, v1, p2

    invoke-static {p2, p3, p1, v0}, Lcom/color/support/widget/e;->a(IIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(J)V

    goto/16 :goto_3

    :cond_7
    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    goto/16 :goto_3

    :cond_8
    if-ne p1, v0, :cond_e

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    const/4 v3, 0x3

    const/high16 v4, -0x80000000

    if-nez p1, :cond_9

    if-eq p3, v4, :cond_9

    aget p1, v1, v0

    aget p2, v1, v2

    aget v0, v1, v3

    invoke-static {p3, p1, p2, v0}, Lcom/color/support/widget/e;->a(IIII)Lcom/color/support/widget/ColorLunarDatePicker$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(Lcom/color/support/widget/ColorLunarDatePicker$a;)V

    goto :goto_3

    :cond_9
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    const/16 v5, 0xc

    if-nez p1, :cond_b

    if-ne p3, v4, :cond_b

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    aget p1, v1, v0

    sub-int/2addr p1, v0

    aget p3, v1, v3

    if-ne p3, v0, :cond_a

    goto :goto_2

    :cond_a
    move p2, v5

    :goto_2
    add-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    aget p1, v1, v2

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->e:I

    iget-object p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->f:I

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-eqz p1, :cond_d

    if-eq p3, v4, :cond_d

    iput-boolean p2, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->c:I

    rem-int/lit8 p3, p1, 0xc

    add-int/2addr p3, v0

    div-int/2addr p1, v5

    if-lez p1, :cond_c

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    invoke-static {p1}, Lcom/color/support/widget/e;->c(I)I

    move-result p1

    if-ne p1, p3, :cond_c

    move p2, v0

    :cond_c
    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iget v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    invoke-static {p1, p3, v0, p2}, Lcom/color/support/widget/e;->b(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    iget p1, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    iget v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->d:I

    invoke-static {p1, p3, v0, p2}, Lcom/color/support/widget/e;->a(IIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLunarDatePicker$a;->a(J)V

    goto :goto_3

    :cond_d
    iput p3, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->b:I

    :cond_e
    :goto_3
    return-void
.end method

.method b(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/util/Calendar;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method d(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/util/Calendar;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorLunarDatePicker$a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
