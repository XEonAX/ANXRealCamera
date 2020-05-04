.class Lcom/color/support/widget/ColorDatePicker$b;
.super Ljava/lang/Object;
.source "ColorDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorDatePicker$b;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic c(Lcom/color/support/widget/ColorDatePicker$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 p1, -0x80000000

    return p1

    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v0, :cond_1

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorDatePicker$b;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    const/16 v4, 0x7e4

    invoke-virtual {v3, p1, v4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorDatePicker$b;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorDatePicker$b;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorDatePicker$b;->d(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    return-void
.end method

.method public a(Lcom/color/support/widget/ColorDatePicker$b;)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean p1, p1, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    return-void
.end method

.method a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorDatePicker$b;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(I)I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/util/Calendar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method c(I)I
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    return p1
.end method

.method d(I)I
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$b;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method
